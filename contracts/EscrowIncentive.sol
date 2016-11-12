pragma solidity ^0.4.4;
contract EscrowIncentive {

bytes32 public name;
uint public endTimelockTimestamp;
address public owner;
uint public totalEscrow;

  function EscrowIncentive(bytes32 _name, uint _endTimelockTimestamp) {
    owner = msg.sender;
    totalEscrow += msg.value;
    name = _name;
    endTimelockTimestamp = _endTimelockTimestamp;
  }

  function returnAllEthToOwner() {
    if(now > endTimelockTimestamp) {
      // to avoid truffle compile error: Warning: Return value of low-level calls not used.
      bool retBool = owner.send(this.balance);
    }
  }
// contracts that can receive input payment must use payable functions in later versions of solc 
  function giveMoneyDoesNothing() payable {

  }

}
