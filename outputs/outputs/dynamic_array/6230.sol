pragma solidity ^0.8.0;
pragma extension unsafe allow {
    function fun(memory memory a, memory memory b) view external returns memory;
}
function fun(memory memory a, memory memory b) view external returns memory {return a;}
