from fractions import Fraction
    
def fancy_output(res, maximize=False):
    data = ''
    for i in res.x:
        data += str(Fraction(i)) + ','

    if maximize:
        optimal = (-1) * res.fun
    else:
        optimal = res.fun
        
    return 'The value of optimal is $' + str(Fraction(optimal)) + '$ at ' + '$(' + data[:-1] + ')$'