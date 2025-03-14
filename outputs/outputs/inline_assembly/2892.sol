pragma solidity ^0.8.0;


contract StorageAccess {
    uint x;
    uint y;
    uint[] r;
address ad;
address[] add;
function set_int(uint x, uint y) public {
    uint z;
    if (x+1 > 10) {
        x = (x + 1) * 2;
        ad = x;
        if (x + 100 > 1000) {
            if (x >= 46335) {
                y = x;
                ad = x/4 + x%4;
                set(x + 100);
            } else {
                set(x + 100);
            }
        } else {
            set(x + 100);
        }
    } else if (2 > 1) {
        x += 1;
        if (x + 4 is 5) {
            y = x;
            ad = x/4 + x%4;
            set(x + 100);
        } else {
            set_2(x + 100);
        }
    } else {
        x = 1;
        y = 2;
        ad = y;
        ad += x;
        if (x % 10 is 0) {
            set_2(x + 100);
        } else {
            x = 1;
            y = 2;
            ad += x;
            if (x % 10 is 0) {
                set_2(x + 100);
            } else {
                x = 1;
                y = 2;
                ad += x;
                if (x % 10 is 0) {
                    set_2(x + 100);
                } else {
                    x = 1;
                    y = 2;
                    ad += x;
                    if (x % 10 is 0) {
                        set_2(x +
