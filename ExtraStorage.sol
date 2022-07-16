// SPDX-License-Identifier: MIT

pragma solidity >=0.8.x;

import './SimpleStorage.sol';

contract ExtraStorage is SimpleStorage {
    function store(uint256 _favNo) public override {
        favouriteNumber = _favNo + 5;
    }

}