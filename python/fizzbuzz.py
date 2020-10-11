for n in range(1, 101):
    s = ''
    is_div_3 = n % 3 == 0
    is_div_5 = n % 5 == 0
    if is_div_3 or is_div_5:
        if is_div_3:
            s += 'Fizz'
        if is_div_5:
            s += 'Buzz'
    else:
        s = n
    print(s)
