pragma solidity ^0.8.0;
contract Good2 {
	struct s {
		int x;
		constructor(int y) { x = y; }
	}
	s x[] b;
	constructor() { x = new s(1); }
}
pragma solidity ^0.8.0;
contract Bad3
	constructor(){
	address[] memory c = new address[](0);
}
pragma solidity ^0.8.0;
contract Good3
	constructor() {
	address[] memory x = new address[](3);
}
contract Code {
	constructor(){

	good1();
	bad2(1);
	good3(address(0));
	bad3();

	}
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract SimpleSt {
	mapping(uint256=>address) a;
	constructor () { a[11]=msg.sender; a[26]=msg.sender; a[9]=msg.sender; }
	function getAddress(uint b) view public returns (address) { return a[b]; }
}

pragma solidity ^0.8.0;
contract MultiSig {

  address[] public admins;
  struct vote{
    uint value;
    mapping(address=>bool) accepted;
  }
  vote[] public votes;
  constructor (address[] memory addr) {

    require(!msg.sender.isContract());
    for (uint i=0; i<addr.length; ++i) {
      admins.push(addr[i]);
    }
  }
  function addAdmin (address addr) public {


    for (uint i=0; i<admins.length; ++i) {
      if (admins[i] == addr) return;
    }
    admins.push(addr);

    for (uint i=0; i<admins.length; ++i)
      for (uint j = 0; j < votes.length; j++)
        if (votes[j].accepted[addrs[i]]) ++votes[j].value;
  }
  function withdrawVote (uint n) public returns (uint) {
    require(msg.sender == admins[n]);
    votes[n].accepted[msg.sender
