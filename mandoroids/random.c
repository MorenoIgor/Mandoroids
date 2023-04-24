unsigned char chance(unsigned char prcntg) {
    char rs = hundred <= prcntg;
    hundred += 255; 
    return rs;
}