pragma solidity ^0.8.0;
contract L17 {
    uint x = 0;
    uint y = 0;
    function loadStore() public view returns(Store memory) {
        storeMultiply();
        return memory(y);
    }
    function loadStore2() public view returns(uint) {
        storeMultiply();
        return x;
    }
    function storeMultiply() private {
        x *= 3;
    }
}

uint my_data = 0;
address a;
if (my_data == 2) {
    a ='some_address';
}
However, there is still a problem in performing operations: if (my_data == 2) {
    a ='some_address';

}\nWhile the above works quite well, a better way to do the same thing would be to separate the two statements:
\nuint my_data = 0;
address a;
if (my_data == 2) a ='some_address';


uint my_data = 0;
address a;
if (my_data == 2) a = some_address;
In this example, a can now be modified to reflect the conditional statement. There are a few complications to understanding this approach, though:
1. The condition of the conditional statement is executed once. The variable'my_data' will be changed, by 'a = some_address', which will generate the address of'my_data'
