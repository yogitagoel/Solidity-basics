// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;
contract SimpleStorage {
    uint256 myfavno;
    struct Person{
        uint256 favno;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string=>uint256) public nameToFavNo;
    function store(uint256 _favno) public{
        myfavno=_favno;
    }

    function retrieve() public view returns(uint256){
        return myfavno;
    }

    function addperson(string memory _name,uint256 _favno) public{
        listOfPeople.push(Person(_favno,_name));
        nameToFavNo[_name]=_favno;
    }

}

contract SimpleStorage2{}
contract SimpleStorage3{}
contract SimpleStorage4{}
