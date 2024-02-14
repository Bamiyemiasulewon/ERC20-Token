// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.18;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
contract MyToken is ERC20("My Token", "MT"), Ownable {

constructor() Ownable(msg.sender) {}
  function mintFifty() public onlyOwner {
      _mint(msg.sender , 50 * 10**18);

   }
}
