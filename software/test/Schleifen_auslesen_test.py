n = [2, 2, 3, 4, 5, 6]
k = [10, 11, 12, 13, 14, 15]
l=(0:5)
print(l)
for i in range(len(n)):
    l[i].append(n[i])
    l[i].append(k[i])

print(l)
res = 0
for i in n:
    print(i)
    res = res + i
print(res)
schnitt = res/len(n)
print(schnitt)

d=2
ds=str(d)

print(d)
print(ds)
print(type(d))
print(type(ds))
strong='ds hat den wert:'+ds+'voll hert man'
print('ds hat den wert:'+ds+'voll hert man')
print(type(strong))

print(n[3])