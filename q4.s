# Multiplicación de una variable por una constante próxima a 4096.
# int a = 0xFFFF987, b = 4091*a;
# s1 <-> a, s2 <-> b
        addi s1, zero, 0xFFFFF987
        slli t0, s1, 10
        sub  t0, t0, s1
        slli t0, t0, 2
        sub  s2, t0, s1
        nop