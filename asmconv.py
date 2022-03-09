# makes the output of this disassembler https://github.com/nejohnson/dasmxx.git
# using listfile
# f../sp400/printer.bin
# c0000 Start
# e1000
# compatible with this assembler https://github.com/sbprojects/sbasm3.git

noop=list(range(0xC87,0x1000))


def toData(l):
    tok=l.split(":")[1].split()
    return " .db "+(",".join([f"${int(t,16):02x}" for t in tok]))+"\n"
    

with open("dasm.asm") as f,open("dasm_sb.asm","w") as g:
    g.write(" .cr 68hc05\n")
    g.write(" .tf ../sp400/reasm.bin,bin\n")
    prevl=""
    for l in f.readlines():
        try:
            currline=int(prevl[1:].split(":")[0],16)
        except:
            currline=-1

        wl=l       
        if l[0]==";":
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
