//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; // version being used

contract SimpleStorage{

    uint256 public myFavoriteNumber;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // Person public Freddy = Person({favoriteNumber : 7, name : "Fred"});
    Person[] public listOfPeople;

    //e.g freddy => 28
    mapping(uint256 => string) public nameToFavNumber;

    function store(uint256 _myFavoriteNumber) public {
        myFavoriteNumber = _myFavoriteNumber;
        myFavoriteNumber++;
    }

    function retrieve() public view returns(uint){
        return myFavoriteNumber;
    }

    function addPerson(uint _favoriteNumber, string memory _name)public {
         listOfPeople.push(Person(_favoriteNumber, _name));
         //About to make use of the mapping field i created above
         nameToFavNumber[_favoriteNumber] = _name;
    }

}