package main

import (
	"encoding/json"
	"fmt"
)

type Person struct {
	Name string
	City string
}

func main() {
	person := Person{Name: "Joe", City: "New York"}
	result, err := json.Marshal(person)
	if err != nil {
		fmt.Println("Error ", err)
	}
	// Result:  {"Name":"Joe","City":"New York"}
	fmt.Println("Result: ", string(result))

	personJson := []byte(`{"name":"Andrej","city":"Brno"}`)
	err2 := json.Unmarshal(personJson, &person)
	if err != nil {
		fmt.Println("Error ", err2)
	}
	// {Andrej Brno}
	fmt.Println(person)

}
