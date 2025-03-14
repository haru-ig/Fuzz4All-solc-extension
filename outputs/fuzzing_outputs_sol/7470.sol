pragma solidity ^0.8.0;
contract Caller {
    function () public payable {
        bool success;
        (success, ) = msg.sender.call{value : msg.value}("");
        require(success == true);
    }
}
contract Fallback {
    function fallback() public pure {
        msg.sender.transfer(address(this).balance);
    }
}
contract SimpleCaller{
    function doCallExample(address destination, uint value, bytes calldata dataString) public returns (bool){
        return address(0).call{value : value}(abi.encodeWithSelector(destination.call.value(value){data : dataString}()));
    }
}
contract ReturnFailureCalls {
    function testFallback() public returns (bool){
        require(address(0) == Caller.sendEtherToCaller());
        return (address(0)!= address(0));
    }
}
contract ReturnStringExample {
    string constant A = "test";
    string constant B = "This is a multi-line string which will break the message splitting test, but the message will be cut off!";
    string constant C = "_!^%^&*(())*\\!%^!%^!^*_";
    string constant D = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_012357987654321";
    string constant E = "A multi-line string will break the message splitting test, but the message will be cut off!_\\`{}~@#$%^&*()-=[]\"';\\|\\,\\[";
    string constant F = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_~!@#$%^&*()-=+{}[];':;<,' > ";
    string constant G = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_~!@#$%^&*()-[]:";
    string constant H = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_~!@#$%^&*():,.;+=,=-?!:?!?";
    function getStrings() public pure returns (string memory){
        string memory result = A;
        result += B;
        result += C;
        result +=  E;
        result +=  dE;
        result +=  D;
        result += E;
        result += C;
        result += A;
        return result;
    }
    function getStrings2() public pure returns (string memory){
        string memory result = A;
        result += C;
        result +=  E;
        result +=  dE;
        result +=  D;
        result += E;
        result += C;
        result += A;
        return result;
    }
    function example3() public pure returns (string memory){
        return "_";
    }
    function
