\m4_TLV_version 1d -p verilog --bestsv --noline: tl-x.org
\SV
   m4_include_lib(['https://raw.githubusercontent.com/os-fpga/Virtual-FPGA-Lab/3760a43f58573fbcf7b7893f13c8fa01da6260fc/tlv_lib/fpga_includes.tlv'])                   

   m4_lab()

   //------------------------------------------
   // ...FPGA logic here.
   // FPGA logic should drive the signals found at the end of the very long line generated by m4_lab() in the NAV-TLV tab.
   // For example:
   always_comb begin
      led[15:0] = cyc_cnt[15:0];
      sseg_digit_n[7:0] = 8'b1 << cyc_cnt[2:0];
      sseg_segment_n[6:0] = 7'b1 << cyc_cnt[2:0];
      sseg_decimal_point_n = cyc_cnt[2:0] == 3'b111;
   end
   //------------------------------------------

\TLV
   /board
      // Board selection (3rd arg of m4+board(..)):
      // 0 - 1st CLaaS on AWS F1
      // 1 - Zedboard
      // 2 - Artix-7
      // 3 - Basys3
      // 4 - Icebreaker
      // 5 - Nexys
      // 6 - CLEAR
      m4+board(/board, /fpga, 3, ['*'])
\SV
   endmodule