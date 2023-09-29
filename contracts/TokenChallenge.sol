// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TokenChallenge is ERC20,Ownable{

        constructor() ERC20("Swisstronik Tokenn","SToK") onlyOwner(){
            _mint(msg.sender, 100*(10**18));
        }

        function mint(uint amount) public onlyOwner(){
            _mint(msg.sender, (amount)*(10**18));
        }
        

}