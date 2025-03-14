pragma solidity ^0.8.0;
contract OldProgram {
    uint constant private FALLBACK = 0;
    mapping(address => uint) private balances;

    function balanceOf(address addr) public view returns (uint) {

    }

    function setBalance(address addr, uint _b) public {
        require(addr!= address(0));
        balances[addr] = _b;
    }
}

pragma solidity ^0.8.0;
contract OldABI8 {
    uint constant private FALLBACK = 58;
    uint8 constant public V = 8;
    uint8 private constant V_ = 100;

    uint private d;

    constructor() public {
        d = FALLBACK;
    }

    function balanceOf() public view returns (uint){
        return balances(address(this));
    }

    function setBalance(uint _d) public {
        d = _d;
    }
}



contract OldABI11 {
    uint constant private FALLBACK = 58;
    uint8 constant public V = 11;
    uint8 constant private V_ = 100;

    uint private d;

    constructor () public {
        d = FALLBACK;
    }

    function balanceOf() public view returns (uint) {
        return balances(address(this));
    }

    function setBalance(uint _d) public {
        d = _d;
    }
}


pragma solidity ^0.8.0;
contract OldABI16 {
    uint constant private FALLBACK = 58;
    uint8 constant public V = 16;
    uint8 constant private V_ = 100;

    uint private d;

    constructor () public {
        d = FALLBACK;
    }

    function balanceOf() public view returns (uint) {
        return balances[msg.sender];
    }

    function setBalance(uint _d) public {
        d = _d;
    }
}
`

export const ABI_OLD_PROGRAM3 = `
pragma solidity 0.8.0;

contract SimpleStore3 {
    bytes32 constant hashOfData = keccak256("hello world!\n");
    mapping(address => uint) balances;
    uint public nextFree;
    mapping(address => uint) public free;

    constructor () public {
        balances[msg.sender] = 1;
    }

    function setFree(uint val
