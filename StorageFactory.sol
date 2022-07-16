// SPDX-License-Identifier: MIT

pragma solidity >=0.8.x;

import './SimpleStorage.sol';

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage _simpleStorage = new SimpleStorage();
        simpleStorageArray.push(_simpleStorage);
    }

    function sfStore (uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfRetrieve(uint256 _simpleStorageIndex) public view returns (uint256) {
        return  simpleStorageArray[_simpleStorageIndex].get();
    } 
}