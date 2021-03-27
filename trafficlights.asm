#include "/home/kuluruvineeth/Downloads/arduino-1.8.9/instruction.inc"


	ldi r16,0b00111111
	out DDRB,r16
	ldi r16,0b00111100
	out DDRD,r16
l1:
	call nine
	call delay
	call eight
	call delay
	call seven
	call delay
	call six
	call delay
	call five
	call delay
	call four
	call delay
	call three
	call delay
	call two
	call delay
	call one
	call delay
	call zero
	call delay
	call zero1
	call delay
	call one1
	call delay
	call two1
	call delay
	call three1
	call delay
	call four1
	call delay
	call five1
	call delay
	call six1
	call delay
	call seven1
	call delay
	call eight1
	call delay
	call nine1
	call delay
	rjmp l1
	


nine:
	ldi r16,0b00001000
	out PORTD,r16
	ldi r16,0b00010000
	out PORTB,r16
	
	ret
nine1:
	ldi r16,0b00010000
	out PORTB,r16
	ldi r16,0b00100000
	out PORTD,r16
	ret

eight:
	ldi r16,0b11000000
	out PORTB,r16
	ldi r16,0b00001000
	out PORTD,r16
	ret


eight1:
	ldi r16,0b11000000
	out PORTB,r16
	ldi r16,0b00100000
	out PORTD,r16
	ret

seven:
	ldi r16,0b00111000
	out PORTB,r16
	ldi r16,0b00001100
	out PORTD,r16
	ret

seven1:
	ldi r16,0b00111000
	out PORTB,r16
	ldi r16,0b00100100
	out PORTD,r16
	ret

six:
	ldi r16,0b00000010
	out PORTB,r16
	ldi r16,0b00001000
	out PORTD,r16
	ret

six1:
	ldi r16,0b00000010
	out PORTB,r16
	ldi r16,0b00100000
	out PORTD,r16
	ret

five:
	ldi r16,0b00010010
	out PORTB,r16
	ldi r16,0b00001000
	out PORTD,r16
	ret

five1:
	ldi r16,0b00010010
	out PORTB,r16
	ldi r16,0b00100000
	out PORTD,r16
	ret

four:
	ldi r16,0b00011001
	out PORTB,r16
	ldi r16,0b00001000
	out PORTD,r16
	ret

four1:
	ldi r16,0b00011001
	out PORTB,r16
	ldi r16,0b00100000
	out PORTD,r16
	ret

three:
	ldi r16,0b00110000
	out PORTB,r16
	ldi r16,0b00001000
	out PORTD,r16
	ret
three1:
	ldi r16,0b00110000
	out PORTB,r16
	ldi r16,0b00100000
	out PORTD,r16
	ret

two:
	ldi r16,0b00100100
	out PORTB,r16
	ldi r16,0b00010000
	out PORTD,r16
	ret

two1:
	ldi r16,0b00100100
	out PORTB,r16
	ldi r16,0b00100000
	out PORTD,r16
	ret

one:
	ldi r16,0b00001111
	out PORTB,r16
	ldi r16,0b00010100
	out PORTD,r16
	ret

one1:
	ldi r16,0b00001111
	out PORTB,r16
	ldi r16,0b00100100
	out PORTD,r16
	ret

zero:
	ldi r16,0b00000000
	out PORTB,r16
	ldi r16,0b00010100
	out PORTD,r16
	ret
zero1:
	ldi r16,0b00000000
	out PORTB,r16
	ldi r16,0b00100100
	out PORTD,r16
	ret

	
delay:
	ldi r18,0XFF
	ldi r19,0XD3
	ldi r20,0X30
inner_loop:
		subi r18,0X01
		sbci r19,0X00
		sbci r20,0X00
		brne inner_loop
		ret


