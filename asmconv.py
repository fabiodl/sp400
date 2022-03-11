# makes the output of this disassembler https://github.com/nejohnson/dasmxx.git
# compatible with this assembler https://github.com/sbprojects/sbasm3.git


import os


noop=list() #list(range(0xC87,0x1000))


def toData(l):
    tok=l.split(":")[1].split()
    return " .db "+(",".join([f"${int(t,16):02x}" for t in tok]))+"\n"
    


os.system("../dasmxx/src/dasm05 listfile.txt -a -o /tmp/6805_dasm.asm")


def getDump(l):
    tok=l.split(";")
    if len(tok)==2:
        cmd,comm=tok
    else:
        cmd,comm=tok[0],None
    cmds=cmd.split()
    if len(cmds)<2 or cmds[0] not in ["DB","DW"]:
        return None
    try:
        dump=" ."+cmds[0]+" " +(",".join([f"${int(t.strip(','),16):02x}" for t in cmds[1:]]))
    except:
        dump=" ."+cmds[0]+" "+" ".join(cmds[1:])
    if comm is not None:
        dump+=" ;"+comm
    else:
        dump+="\n"
    return dump

with open("/tmp/6805_dasm.asm") as f,open("sp400_6805_sb.asm","w") as g:
    g.write(" .cr 68hc05\n")
    g.write(" .tf /tmp/sp400_6805_reasm.bin,bin\n")
    prevl=""
    for idx,l in enumerate(f.readlines()):

        try:
            currline=int(prevl[1:].split(":")[0],16)
        except:
            currline=-1

        if idx<2:                        
            wl=";"+l
        else:
            if l.strip() in [";",""]:
               continue
            dump=getDump(l)
            if dump:
                wl=dump
            else:            
                wl=l
                if l[0]==";":
                    tok=l.strip().split(":")
                    if len(tok)>1 and tok[1]!="":
                        try:
                            addr=int(l[1:].split(":")[0],16)
                            wl=f"; l{addr:04x}: {toData(l)}"
                        except:
                            pass
                else:    
                    if "???" in l or currline in noop:    
                        wl=";"+l+toData(prevl)
                
            
        g.write(wl)
        prevl=l

os.system("../sbasm3/sbasm sp400_6805_sb.asm")
os.system("diff sp400_hd6805v1.bin /tmp/sp400_6805_reasm.bin")
