pragma solidity ^0.8.0;
contract Hello
{

    string public message = "Hello, world";

    function sendTo(address dest) public {
        dest.call(abi.encodePacked("Greeter:greet"));
        dest.call(abi.encodePacked("Greeter:greetAgain"));
    }

    contract Greeter
    {
        address payable public greeteraddr;
        uint8 public port = 25;
        function greet() public payable{
            if(greeteraddr!= address(0))
            {
                (bool success, ) = greeteraddr.call{value: msg.value}("0.0.0.0");
            }
        }

        function sendTo(address dest) public {
            dest.call(abi.encodePacked("Greeter:greet", greeteraddr));
        }

        function sendToMany(address payable dest, uint count) public {
            for(uint i = 0; i< count; i++)
            {
                dest.call(abi.encodePacked("Greeter:greet"));
            }
        }

        function sendToMany2(address payable[] memory dest, uint count) public {
            for(uint i = 0; i< count; i++)
            {
                dest[i].call(abi.encodePacked("Greeter:greet"));
            }
        }

        function sendToMany3(address payable [] memory dest, uint count) public {
            for(uint i = 0; i< count; i++)
            {
                dest[i].call(abi.encodePacked("Greeter:greet"));
            }
        }

        function sendToMany4(address payable[] memory dest, uint count, address payable[] memory dest2, uint count2) public {
            for(uint i = 0; i< count; i++)
            {
                dest[i].call(abi.encodePacked("Greeter:greet
