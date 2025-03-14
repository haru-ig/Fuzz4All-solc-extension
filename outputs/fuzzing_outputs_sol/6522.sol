pragma solidity ^0.8.0;
contract f {

    constructor (uint[2] memory data_) {
        data[0] = 4;
        f.g(data);
        data[0]++;
        data[1]--;
    }

    contract g {
        function g (uint[2] memory data) public {
            if (data[0] == 5) {
                throw;
            } else {
                data[0]++;
            }
        }
    }
}
