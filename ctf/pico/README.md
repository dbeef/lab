# Solutions for [picoGym](https://play.picoctf.org/practice) CTFs
## Lessons:

* python3
    * `nice-netcat...`
        * reading from pipe
        * encode/decode individual character
        * formatting strings
        * get bitwise representation of an integer
        * read file 
* `./static-aint-always-noise` 
    * objdump usage to disassemble executable and dump strings
* `./magikarp-ground-mission`
    * one-liner to connect with SSH and execute a command on remote
    * bash - forward all args to subsequent command through $@
* Reverse engineering
    * [Intel opcode cheatsheet](https://cs.brown.edu/courses/cs033/docs/guides/x64_cheatsheet.pdf)
    * `unpackme`
        * packers - UPX
        * Cutter (radare2 wrapper)
        * Changing opcode to impact jump address and get the flag
    * `bbbbloat`
        * Cutter (radare2 wrapper)
        * Changing opcode to impact jump address and get the flag
    * `fresh-java`
        * Decompiling Java class with Intellij
    * `asm1`
        * .S files are source code files written in Assembly
        * Commented asm code with explanations
        * See the cheatsheet `./notes/x64_cheatsheet.pdf`
    * `ARMssembly0`
        * How to compile .S file
        * Actually - cross compile
        * Running cross-compiled executable on host using Qemu
        * How taking arguments looks like assembly
    * `timer`
        * First Android challenge
        * .apks are zip archives
    * `vault-door-3`
        * compile and run java from command linec

