# Multiplicación de una variable por una constante usando sumas y 
# desplazamientos
# int a = -4,  b = -510*a;
# s1 <-> a, s2 <-> b
        addi s1, zero, -4
        slli t0, s1, 8
        sub  t0, s1, t0
        slli s2, t0, 1
        nop