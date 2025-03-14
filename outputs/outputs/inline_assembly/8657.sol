pragma solidity ^0.8.0;
contract Modul{
        uint public s;
        constructor() public{
            s = 3;
        }
        function mod(){
            s = s-1;
        }
}
contract Modul{
        uint public s;
        constructor(uint init_count) public{
            s = init_count;
        }
        function mod(){
            s = s-2;
        }
}
contract Modul{
        uint public s;
        constructor(uint init_count) public{
            s = init_count * 0.125;
        }
        function mod(){
            s = s - 100;
        }
}
