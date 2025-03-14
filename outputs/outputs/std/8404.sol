pragma solidity ^0.8.0;
contract MutatedArrayBis6Is6 {
    function sum(uint[] memory integers) public view returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < integers.length; ++i){
            sum += i;
        }
        return sum;
    }
}

pragma solidity ^0.8.0;
contract AddToLists {
    uint a[10] = [0,2,1,-5,0,0,9,23,-24,4];
    uint[] x = [3,6];
    uint value = 100;

    function addToLists() public {
        for (uint i = 0; i < a.length; ++i){
            a[i] += value;
        }
        a[9] = x.length + a[9];
    }
}

pragma solidity ^0.8.0;
contract SingleArray {
    uint[] x = [6];
    struct State {
        uint m;
    }
    state Statey;
    struct Storage {
        uint count;
        uint len;
    }

    function incrementArray() public {
        storage(x).count += 1;
    }
    function lengthOfArray() public view returns (uint){
        return storage(x).len;
    }
    function storeAtArray(uint number) public {
        storage(x).len = number;
    }
    function loadFromArray() public view returns (uint){
        return storage(x).len;
    }
    function getLength() public view returns (uint){
        return storage(x).len;
    }
    function emptyArray() public view returns (uint){
        return storage(x).count;
    }
    function lengthOfState() public view returns (uint){
        return Statey.m;
    }
    function storeAtState() public {
        Statey.m += value;
    }
}

pragma solidity ^0.8.0;
contract OneGigArray {
    uint[,] a = new uint[10000000, 20];
    uint[] x;

    function addElement() public {
        a[x.length,9] = 202;
        x.push(150);
    }
}
