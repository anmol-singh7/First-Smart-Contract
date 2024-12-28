// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage {
       uint256 public myFavoriteNumber;

       function store(uint256 _favoriteNumber) public {
            myFavoriteNumber = _favoriteNumber;
            
       }

       uint256[] listOfFavoriteNumber;


       struct Person {
            uint256 favoriteNumber;
            string name;
       }

       Person public pat = Person(5,"pat");

       Person public pat2 = Person({favoriteNumber:55, name:"pat2"});
       
       Person[] public listOfPeople; // dynamic list
       Person[3] public staticListOfPeople;

       // view, pure
       function retriever() public view returns(uint256) {
           return myFavoriteNumber;
      }

      
}