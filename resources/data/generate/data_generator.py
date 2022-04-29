import random
import csv

def random_int():
    return random.randint(1, 10001)

def random_float():
    return round(random.uniform(100000, 300000), 2)

def random_type():
    return random.choice(["flat", "house"])

file_object = open('agent-reports-data.csv', 'a')

for _ in range(50000):
    agent_id = random_int()
    map_url = f"maps.google.com/{agent_id}"
    real_estate_type = random_type()
    price = random_float()

    writer = csv.writer(file_object, lineterminator='\n')
    csv_data = [agent_id, map_url, real_estate_type, price]
    writer.writerow(csv_data)
    print(csv_data)

file_object.close()