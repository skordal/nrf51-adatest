--  Ada Test Application for NRF51
--  (c) Kristian Klomsten Skordal 2016 <kristian.skordal@wafflemail.net>
--  vim:ts=3:sw=3:et:si:sta

with nRF51.GPIO;

procedure AdaTest is
   package GPIO renames nRF51.GPIO;

   LED0 : GPIO.GPIO_Point := (Pin => 21);
   LED0_Config : constant GPIO.GPIO_Configuration := (
      Mode => GPIO.Mode_Out,
      Resistors => GPIO.No_Pull,
      Input_Buffer => GPIO.Input_Buffer_Disconnect,
      Drive => GPIO.Drive_S0S1,
      Sense => GPIO.Sense_Disabled
   );
begin
   LED0.Configure_IO (LED0_Config);
   LED0.Clear;
end AdaTest;

