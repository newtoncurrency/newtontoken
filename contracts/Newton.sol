pragma solidity ^0.4.25;

import "./Living.sol";
import "./abstract/quantum.sol";
import "../interfaces/conductor.sol";

contract Newton is Living, quantum, conductor {
  function name() external pure returns (string) { return "Newton"; }
  function symbol() external pure returns (string) { return "NTQ"; }
  function decimals() public view returns (uint8) { return 2; }

  function commit(address from, uint to) external closed {
    _commit(from, to);

    emit Commission(from, to);
  }

  function transmit(uint from, address to, uint value) external closed {
    _transmit(from, to, value);

    emit Transmission(from, to, value);
  }
}
