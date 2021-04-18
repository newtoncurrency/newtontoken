pragma solidity ^0.4.25;

contract time {
  mapping (uint => uint) private power;

  function totalPower() public view returns (uint);

  function _commit(uint value, uint id) internal {
    power[id] += value;
  }

  function _count(uint id) internal returns (uint) {
  	uint value = power[id];

    power[id] = 0;

    return value;
  }
}
