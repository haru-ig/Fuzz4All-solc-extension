pragma solidity ^0.8.0;
contract mul84 {

        struct Data { uint x; uint y; }

        Data[] public datas;


        function add(uint x, uint y) public {
            datas.push(Data(x + y, x + y));
        }
    uint x = 20;
    uint y = 40;
    constructor(uint x2, uint y2) {
        add(x+x2, y);
    }
}
