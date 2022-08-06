# Multiplicación y operadores relacionales
# int a = 134, b = 69*a;
# s1 <-> a, s2 <-> b
        addi s1, zero, 134
        slli t0, s1, 4
        add  t0, s1, t0
        slli t0, t0, 2
        add  s2, t0, s1 
        nop