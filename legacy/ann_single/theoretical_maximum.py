import random, math

adist = 0.0

it = 100000
for i in range(it):
    if i % 100 == 0: print i
    food = [(random.randint(0, 640), random.randint(0, 480)) for j in range(1024)]

    pos = (random.randint(0, 640), random.randint(0, 480))

    closest_distance = 100000000
    closest_index = -1
    for f in food:
        d = (f[0]-pos[0])**2 + (f[1]-pos[1])**2
        if d < closest_distance:
            closest_index = food.index(f)
            closest_distance = d

    d = math.sqrt(closest_distance)

    adist += d/it

print adist
