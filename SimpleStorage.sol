// SPDX-License-Identifier: MIT

pragma solidity ^0.8.x;

contract SimpleStorage {
    uint256 favouriteNumber;
    
    struct People {
        uint256 favouriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavNo;

    function store(uint256 _favNo) public virtual {
        favouriteNumber = _favNo;
    }

    function get() external view returns (uint256)  {
        return favouriteNumber;
    }

    function addPeople(uint256 _favNo, string memory _name) public {
        people.push(People(_favNo,_name));
        nameToFavNo[_name] = _favNo;

    }
}