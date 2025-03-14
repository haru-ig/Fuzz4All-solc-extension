pragma solidity ^0.8.0;
library EquivalentMutated {
        function append(uint8[] memory to, uint8[] calldata data) private pure returns (uint8[] memory out) {
                uint8 slen1 = to.length;
                uint8 slen2 = data.length;
                uint8 idx1 = 0;
                uint8 idx2 = 0;
                out = new uint8[](slen1+slen2);
                while (to[idx1]==0 && idx1<slen1){
                        cnt += 1;
                }
                while (data[idx2]==0 && idx2<slen2){
                        cnt -= 1;
                }
                while (to[idx1]==0 && idx1<slen1 && idx2<slen2){
                        out[slen1 + idx1] = 0;
                        idx1 += 1;
                        idx2 += 1;
                }
                while (to[idx1]==0 && idx1<slen1) {
                        out[slen1 + idx1] = 1;
                        idx1 += 1;
                }
                while (data[idx2]==0 && idx2<slen2) {
                        out[slen1 + idx1 + 1] = 2;
                        idx2 += 1;
                }
                while (data[idx2]==2 && idx2<slen2) {
                        out[slen1 + idx1 + 1] = 0;
                        out[slen1 + idx1 + 2] = 1;
                        idx2 += 1;
                }
                while (idx1<slen1 && idx2<slen2) {
                        out[slen1 + idx1 + 1] = 2;
                        idx1 += 1;
                        idx2 += 1;
                }
                while(idx2<slen2) {
                        out[slen1 + idx1 + 1] = 2;
                        idx1 += 1;
                        out[slen1 + idx1 + 2] = 2;
                        idx2 += 1;
                }
        }
}
