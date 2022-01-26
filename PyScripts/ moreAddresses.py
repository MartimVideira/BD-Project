from numpy import character
import requests
from bs4 import BeautifulSoup
import random



def random_zip():
    numeros = [c for c in range(65,91)]
    numeros.extend([c for c in range(97,123)])
    numeros.extend([c for c in range(48,58)])
    zipcode = "".join([chr(random.choice(numeros)) for c in range(0,5)])
    return zipcode
   
def add_cities():
    lista_cities = []
    for c in range(1,4):
        url: str = f"https://data.mongabay.com/cities_pop_0{c}.htm"
        request = requests.get(url)
        soup = BeautifulSoup(request.content, "html.parser")
        listaCountries = soup.find_all("table")[-1]
        for tablerow in listaCountries.childGenerator():
            try:
                city,country = (tablerow.find("td").text).split(",")
                country =country.strip()
                city= city.strip() 
                lista_cities.append((country,city,random_zip()))

            except:
                pass
    return lista_cities

def main():
    with open("povoarAddresses.sql","w") as f:
        f.write("pragma foreign_keys = on;\n\n")
        f.write("insert into Address(country, city, zipCode) values\n")
        lista_countries = add_cities()
        for city in lista_countries[:-1]:
            f.write(f"\t\t{city},\n")
        
        f.write(f"\t\t{lista_countries[-1]};")

if __name__ =="__main__":
    main()