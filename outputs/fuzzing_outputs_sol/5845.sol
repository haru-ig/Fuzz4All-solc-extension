pragma solidity ^0.8.0;
contract MovedSemantics2 {
    uint[100][100] x;
    uint[100][100] y;
    function test(uint[100] memory x, uint[100] memory y){
        uint[100][100] memory x_copy = x;
        uint[100][100] memory y_copy = y;
        for (uint i = 0; i < x.length; i++) {
            uint x_element = x[i];
            uint y_element = y[i];
            if (x_element < y_element) {
                if (x[i] == x_element) y[i] = y_element + 1;
                x_element = x[i] + 1;
                y[i] = x_copy[i] + 1;
            } else {
                if (x[i] > y_element) {
                    x[i] = x_element;
                    y[i] = y_copy[i];
                }
            }
            y_copy[i] = y_element;
        }
    }
}
