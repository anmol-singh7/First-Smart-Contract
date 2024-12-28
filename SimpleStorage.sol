// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage {
       uint256 public myFavouriteNumber;
       
       mapping(string => uint256) public nameToFavouriteNumber;

       function store(uint256 _favouriteNumber) public {
            myFavouriteNumber = _favouriteNumber;
            
       }

       uint256[] listOfFavouriteNumber;


       struct Person {
            uint256 favouriteNumber;
            string name;
       }

       Person public pat = Person(5,"pat");

       Person public pat2 = Person({favouriteNumber:55, name:"pat2"});
       
       Person[] public listOfPeople; // dynamic list
       Person[3] public staticListOfPeople;

       // view, pure
       function retriever() public view returns(uint256) {
           return myFavouriteNumber;
      }
      
      // calldata, memeory, storage
      function addPerson(string memory _name, uint256 _favouriteNumber) public {
           Person memory newPerson = Person(_favouriteNumber, _name);
           listOfPeople.push(newPerson);
           //OR
           // listOfPeople.push( Person(_favouriteNumber, _name));
           nameToFavouriteNumber[_name] = _favouriteNumber;
      }


}