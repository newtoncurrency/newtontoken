pragma solidity ^0.4.25;

interface conductor {
  event Commission(address indexed from, uint indexed to);
  event Transmission(uint indexed from, address indexed to, uint value);

  function commit(address from, uint to) external;
  function transmit(uint from, address to, uint value) external;
}
