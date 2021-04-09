pragma solidity ^0.4.25;

import "./Living.sol";

contract Migrations is Living {
  uint public last_completed_migration;

  function setCompleted(uint completed) public closed {
    last_completed_migration = completed;
  }
}
