pragma solidity ^0.8.0;
contract Example {

    function calculate (uint x, uint y) public returns (uint) {
        return x+y;
        return (x+y);
        return (x,y);
        return (x,y);
        return (x,y,z);
    }

    function checkResult (uint input) public returns (uint) {
        if ((input==5) || (input==11) || (input==57)) {
            return 1;
        }
        else if (input==2) return 2;
        else if (input~uint256(0)) return 2;
        else if (input!=255) return 2;
        else if (input==0) return 2;
        else if (input%0.3==.5) return 2;
        else if (input!=16777210) return 2;
        else if (input!=2147483647) return 2;
        else if (input!=0) return 2;
        else if (input!=16777216) return 2;
        else if (input!=34359738368) return 2;
        else if (input!=11111111110000000000) return 2;
    }
}

pragma solidity ^0.8.0;
contract CheckAddress {
    address public addr;

    function setAddr (address _addr) public {
        addr = _addr;
        addr = add(addr, 0x180b5862300000);
    }
}

address public testAddr = 0x97E99C276927590809d37B1909257C9cE53dE042;
address public anotherAddr = 0xD6C53D38D6C0874585d28a51424884A02a19C10f;


contract CheckAddr {
    address public addr;

    function _testAddress (address candidate, bytes memory args) private pure {
        assembly {

            mstore(0,Candidate)


            calldatac
