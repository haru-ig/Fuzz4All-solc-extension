pragma solidity ^0.8.0;
contract Mutator {
    address public owner;
    address public contractor;
    uint public state = 0;
    constructor() public { owner = msg.sender; contractor = msg.sender; }
    modifier onlyOwner() {
        require(owner == msg.sender, 'Error: caller is not the owner');
        _;
    }
    modifier onlyContractor() {
        require(contractor == msg.sender, 'Error: caller is not the contractor');
        _;
    }
    function init(
        address _owner,
        address _contractor,
        bytes memory _code
    ) public {

        owner = _owner;
        contractor = _contractor;
        assembly {
            code {
                extcodesize(_code) {
                    switch iszero(mload(0x40)) {
                        case 0{
                            mstore(0xab, 0b0000100010) ;
                _code_i := mload(0x40) ;
                    extcodecopy(0x95, _code_i) ;
                    extcodecopy(0x95, 0x15) ;
                }
            }

        }
        }
    }
}

pragma solidity ^0.8.0;
contract Arithmetic {
    uint value;
    constructor(uint _value) public { value = _value; }
    function multiply() public pure returns(uint) { return value * 100; }
    function divide() public pure returns(uint) { return 100 / value; }
}

pragma solidity ^0.8.0;
contract Checker {
    string public errorMessage = 'test';
    function test() public pure { }
    function test2() public pure {
        assert(true);
    }
    function test3() public pure {
        assert(false);
    }
}

pragma solidity ^0.8.0;
contract Wrapping {
    uint value;
    function init(uint _value) public {
        value = _value;
    }
    function multiply() public pure returns(uint) {
