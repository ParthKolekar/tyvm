OBJ = tyvm
ASM ?= nasm

$(OBJ) : $(OBJ).asm
	$(ASM) -f bin $(OBJ).asm -o ${OBJ}.bin

clean :
	rm -f $(OBJ).bin

all : ${OBJ}

