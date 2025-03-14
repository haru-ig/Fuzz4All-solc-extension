pragma solidity ^0.8.0;
contract F2 {
    function multiply (uint a, uint b) public pure returns (uint){
        a*=(1e18 / b);
        return a;
    }
}
contract F3 {
    function multiply (uint a, uint b) public pure returns (uint){
        uint temp = 1;
        while(--b > 0){
            temp = multiply(temp, 1e18);
        }
        return (temp * b);
    }
}
pragma solidity ^0.8.0;
contract F4 {
    function multiply (uint a, uint b) public pure returns (uint){
        uint temp = 1;
        for( uint8 i=0; i<uint8(b); i++){
            temp = multiply(temp, 1e18);
        }
        return (temp * b);
    }
}

pragma solidity ^0.8.0;
contract F5 {
    function multiply (uint a, uint b) public pure returns (uint){
        uint temp = 1;
        for( uint8 i=0; i<uint8(a); i++){
            temp = multiply(temp, b);
        }
        return (temp * a);
    }
}
contract F6 {
    function multiply (uint a, uint b) public pure returns (uint){
        uint temp = 1;
        for( uint8 i=0; i<uint8(b); i++){
            temp = multiply(a, temp);
        }
        return (temp * a);
    }
}
contract F7 {
    function multiply (uint a, uint b) public pure returns (uint){
        uint temp = 1;
        for( uint8 i=0; i<uint8(a); i++){
            temp = multiply(a, temp);
        }
        return temp;
    }
}
pragma solidity ^0.8.0;
contract F8 {
    function multiply (uint a, uint b) public pure returns (uint){
        uint temp = b * a;
        for( uint8 i=0; i>uint8(b); i++){
            temp = multiply(a, temp);
        }
        return (temp);
    }
}
contract F9 {
    function multiply (uint a, uint b) public pure returns (uint){
        uint temp = b * a;
        for( uint8 i=0; i>uint8(temp); i--){
            temp = multiply(a, temp);
        }
        return (temp);
