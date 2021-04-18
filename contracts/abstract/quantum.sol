pragma solidity ^0.4.25;

import "./time.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract quantum is ERC20, time {
  function decimals() public view returns (uint8);
  function totalPower() public view returns (uint) { return 10**uint(decimals()); }

  function _commit(address from, uint to) internal {
    _burn(from, _count(to));
  }

  function _transmit(uint from, address to, uint value) internal {
    _mint(to, value);
    _commit(value, from);
  }
}
