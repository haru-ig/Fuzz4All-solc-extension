pragma solidity ^0.8.0;
contract S3 {
        uint public a;
        uint public b;
    constructor() public {
        a = 16;
        b = (a+2)*(a+3);
    }
    function changeX() public {
        a+=1;
        b= a;
    }
}

pragma solidity ^0.8.0;
contract S3 {
        uint public a;
        uint public b;
        function changeX() public {
        a+=1;
        b= a;
    }
}
