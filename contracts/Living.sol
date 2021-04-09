pragma solidity ^0.4.25;

contract Living {
  event Migration(address from, address to);
  event Transition(address to);

  address public owner;

  modifier closed() {
    require(msg.sender == owner);

    _;
  }

  constructor() public {
    owner = msg.sender;
  }

  function migrate(address to) public closed {
    emit Migration(owner, to);

    owner = to;
  }

  function transit(address to) public closed {
    emit Transition(to);

    selfdestruct(owner);
  }
}
