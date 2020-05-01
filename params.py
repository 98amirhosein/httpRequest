if __name__ == '__main__':
    res = ''
    while True:
        param = str(input())
        if param == 'done':
            break
        res+= param + '&'
    res =res[:-1]
    print(res)
