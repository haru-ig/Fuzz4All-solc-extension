pragma solidity ^0.8.0;
interface TesterInterface {
    function test() external payable;
}

pragma solidity ^0.8.0;
contract SimpleError {

    function revertWithException(TesterInterface test, uint value) external {
        uint success = test.set(value);
        revert("revert with exception");
    }



    function test4(TesterInterface test, uint value) external {
        test.set(value);
    }


    function setReceiveFunction(TesterInterface test) public returns(bool sent) {
        sent = true;
        if(test.set.value(3 ether)(4 ether)){
            test.call{value: 4 ether}();
        }
        return sent;
    }
    function test5(TesterInterface test) public returns(bool) {
        return test.setReceiveFunction(test);
    }


    struct CallerInterface {
        uint result;
        uint value;
    }
    struct StructReceiver {
        bytes32 field;
    }
    mapping(uint => CallerInterface) storage lastResults;
    mapping(uint => mapping(address=>StructReceiver)) storage received;
    function test6() public returns(uint success, int x, bytes32 value) {
        struct CallerImpl {
            uint _value;
            bool success;
            uint[] xs;
        } caller;
        for(uint x; x <= 5; x++) {
            if(!received[x][msg.sender]) {

                x = set(x);
            }
            (bool sent, int x, bytes32 value) = setReceiveFunction(caller);
            for(bytes32 field; field.length < 3; field += field) {
                lastResults[x][msg.sender] = CallerInterface({value, success, []});
            }

            if(sent){
                (x, int x, bytes32 value) = setReceiveFunction(caller);
            }
            assert(value === "" || value[0]==1);
        }

        (x, int x, bytes32 value) = testReceiveFunction(bytes.max);
        (x, int x, bytes32 value) = testReceiveFunction(bytes32(1));

        lastResults[5][msg.sender] = CallerInterface({result: 42, value: 8, success: false, xs:[]});
        /* Throw the exception. The contract will
