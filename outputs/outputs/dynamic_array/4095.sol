pragma solidity ^0.8.0;
contract D {
    uint[] public data;
    uint public data2;
    uint public data3;
    uint counter;
    bool exists;
    uint internal constant initialCounter = 5;
    mapping (uint => bool) public alreadyVisited;
    function e() public {
        if (data2 == 0)
        {
            data3 = 0;

        uint counterTemp = 1;
        for (uint i = 0; i < data.length; i++)
        {
            data[i] = counterTemp;
            counter++;
            if(counter == initialCounter)
            {
                data.push(counter);
                data.push(initialCounter);
                exists = true;
                break;
            }
        }
        uint index = 0;
        uint prev = initialCounter;
        while(index!= 0)
        {
        if(data[index-1] > prev)
        {
            uint temp = data[index-1];
            data[index-1] = data[index];
            data[index] = temp;

            index--;
        }
        else
        {
        if(data[index] == prev)
        {
            data[index] = counterTemp;
            exists = true;
        }
        else
        {
        if(Math.modd(prev % 2, 2) == true)
        {
            uint temp = data[index-1];
            data[index-1] = data[index];
            data[index] = temp;
            data[index-1] = counterTemp;
            data[index] = counterTemp;
            exists = true;
        }
        else
        {
        data[index] = counterTemp;
        exists = true;
        }
        }
        }
        }
    }
}

pragma solidity ^0.8.0;
/*contract E {
uint[] public data;
uint public data2;
uint internal constant initialCounter = 5;
mapping (uint => bool) public already
