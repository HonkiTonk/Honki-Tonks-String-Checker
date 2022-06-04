pragma Warnings (Off, "*array aggregate*");

with ContainsOnlyNumbers;

package body StringToInteger is
   
   function UnboundedString
     (UnboundedStringExtern : in Unbounded_String)
      return ConversionRecord
   is begin
      
      return NormalString (StringExtern => To_String (Source => UnboundedStringExtern));
      
   end UnboundedString;
   
   

   function NormalString
     (StringExtern : in String)
      return ConversionRecord
   is begin
      
      case
        StringExtern (StringExtern'First)
      is
         when '-' =>
            NegativeNumber := True;
            StringBegin := StringExtern'First + 1;
            
         when others =>
            NegativeNumber := False;
            StringBegin := StringExtern'First;
      end case;
      
      LengthString := StringExtern'Length;
      
      if
        LengthString = 1
        and
          NegativeNumber = False
      then
         null;
               
      elsif
        LengthString in 2 .. EndPositiveString
      then
         null;
            
      elsif
        LengthString = EndNegativeString
        and
          NegativeNumber
      then
         null;
         
      else
         return ConversionNotPossible;
      end if;
      
      case
        ContainsOnlyNumbers.NormalString (StringExtern => StringExtern (StringBegin .. StringExtern'Last))
      is
         when True =>
            null;
            
         when False =>
            return ConversionNotPossible;
      end case;
      
      if
        LengthString < EndPositiveString
        or
          (LengthString = EndPositiveString
           and
             NegativeNumber)
      then
         return (True, Integer'Value (StringExtern));
         
      else
         null;
      end if;
      
      if
        NegativeNumber = False
        and then
          Integer'Value (StringExtern (StringBegin + 1 .. EndPositiveString)) > Integer'Value (MaximumValue (StringBegin + 1 .. EndPositiveString))
          and then
            Integer'Value (Ada.Strings.Fixed.Trim (Source => StringExtern (StringBegin)'Image,
                                                   Side   => Ada.Strings.Left))
        >= Integer'Value (Ada.Strings.Fixed.Trim (Source => MaximumValue (StringBegin)'Image,
                                                  Side   => Ada.Strings.Left))
      then
         return ConversionNotPossible;
         
      elsif
        NegativeNumber
        and then
          Integer'Value (StringExtern (StringBegin + 1 .. EndNegativeString)) > Integer'Value (MinimumValue (StringBegin + 1 .. EndNegativeString))
          and then
            Integer'Value (Ada.Strings.Fixed.Trim (Source => StringExtern (StringBegin)'Image,
                                                   Side   => Ada.Strings.Left))
        >= Integer'Value (MinimumValue (StringBegin)'Image)
      then
         return ConversionNotPossible;
         
      else
         return (True, Integer'Value (StringExtern));
      end if;
         
   end NormalString;
   
   
   
   function UnboundedWideString
     (UnboundedWideStringExtern : in Unbounded_Wide_String)
      return ConversionRecord
   is begin
      
      return WideString (WideStringExtern => To_Wide_String (Source => UnboundedWideStringExtern));
      
   end UnboundedWideString;
   
   
   
   function WideString
     (WideStringExtern : in Wide_String)
      return ConversionRecord
   is begin
      
      case
        WideStringExtern (WideStringExtern'First)
      is
         when '-' =>
            NegativeNumber := True;
            StringBegin := WideStringExtern'First + 1;
            
         when others =>
            NegativeNumber := False;
            StringBegin := WideStringExtern'First;
      end case;
      
      LengthString := WideStringExtern'Length;
      
      if
        LengthString = 1
        and
          NegativeNumber = False
      then
         null;
               
      elsif
        LengthString in 2 .. EndPositiveString
      then
         null;
            
      elsif
        LengthString = EndNegativeString
        and
          NegativeNumber
      then
         null;
         
      else
         return ConversionNotPossible;
      end if;
      
      case
        ContainsOnlyNumbers.WideString (WideStringExtern => WideStringExtern (StringBegin .. WideStringExtern'Last))
      is
         when True =>
            null;
            
         when False =>
            return ConversionNotPossible;
      end case;
      
      if
        LengthString < EndPositiveString
        or
          (LengthString = EndPositiveString
           and
             NegativeNumber)
      then
         return (True, Integer'Wide_Value (WideStringExtern));
         
      else
         null;
      end if;
      
      if
        NegativeNumber = False
        and then
          Integer'Wide_Value (WideStringExtern (StringBegin + 1 .. EndPositiveString)) > Integer'Value (MaximumValue (StringBegin + 1 .. EndPositiveString))
          and then
            Integer'Value (Ada.Strings.Fixed.Trim (Source => WideStringExtern (StringBegin)'Image,
                                                   Side   => Ada.Strings.Left))
        >= Integer'Value (Ada.Strings.Fixed.Trim (Source => MaximumValue (StringBegin)'Image,
                                                  Side   => Ada.Strings.Left))
      then
         return ConversionNotPossible;
         
      elsif
        NegativeNumber
        and then
          Integer'Wide_Value (WideStringExtern (StringBegin + 1 .. EndNegativeString)) > Integer'Value (MinimumValue (StringBegin + 1 .. EndNegativeString))
          and then
            Integer'Value (Ada.Strings.Fixed.Trim (Source => WideStringExtern (StringBegin)'Image,
                                                   Side   => Ada.Strings.Left))
        >= Integer'Value (MinimumValue (StringBegin)'Image)
      then
         return ConversionNotPossible;
         
      else
         return (True, Integer'Wide_Value (WideStringExtern));
      end if;
      
   end WideString;
   
   
   
   function UnboundedWideWideString
     (UnboundedWideWideStringExtern : in Unbounded_Wide_Wide_String)
      return ConversionRecord
   is begin
      
      return WideWideString (WideWideStringExtern => To_Wide_Wide_String (Source => UnboundedWideWideStringExtern));
      
   end UnboundedWideWideString;
   
   
   
   function WideWideString
     (WideWideStringExtern : in Wide_Wide_String)
      return ConversionRecord
   is begin
      
      case
        WideWideStringExtern (WideWideStringExtern'First)
      is
         when '-' =>
            NegativeNumber := True;
            StringBegin := WideWideStringExtern'First + 1;
            
         when others =>
            NegativeNumber := False;
            StringBegin := WideWideStringExtern'First;
      end case;
      
      LengthString := WideWideStringExtern'Length;
      
      if
        LengthString = 1
        and
          NegativeNumber = False
      then
         null;
               
      elsif
        LengthString in 2 .. EndPositiveString
      then
         null;
            
      elsif
        LengthString = EndNegativeString
        and
          NegativeNumber
      then
         null;
         
      else
         return ConversionNotPossible;
      end if;
      
      case
        ContainsOnlyNumbers.WideWideString (WideWideStringExtern => WideWideStringExtern (StringBegin .. WideWideStringExtern'Last))
      is
         when True =>
            null;
            
         when False =>
            return ConversionNotPossible;
      end case;
      
      if
        LengthString < EndPositiveString
        or
          (LengthString = EndPositiveString
           and
             NegativeNumber)
      then
         return (True, Integer'Wide_Wide_Value (WideWideStringExtern));
         
      else
         null;
      end if;
      
      if
        NegativeNumber = False
        and then
          Integer'Wide_Wide_Value (WideWideStringExtern (StringBegin + 1 .. EndPositiveString)) > Integer'Value (MaximumValue (StringBegin + 1 .. EndPositiveString))
          and then
            Integer'Value (Ada.Strings.Fixed.Trim (Source => WideWideStringExtern (StringBegin)'Image,
                                                   Side   => Ada.Strings.Left))
        >= Integer'Value (Ada.Strings.Fixed.Trim (Source => MaximumValue (StringBegin)'Image,
                                                  Side   => Ada.Strings.Left))
      then
         return ConversionNotPossible;
         
      elsif
        NegativeNumber
        and then
          Integer'Wide_Wide_Value (WideWideStringExtern (StringBegin + 1 .. EndNegativeString)) > Integer'Value (MinimumValue (StringBegin + 1 .. EndNegativeString))
          and then
            Integer'Value (Ada.Strings.Fixed.Trim (Source => WideWideStringExtern (StringBegin)'Image,
                                                   Side   => Ada.Strings.Left))
        >= Integer'Value (MinimumValue (StringBegin)'Image)
      then
         return ConversionNotPossible;
         
      else
         return (True, Integer'Wide_Wide_Value (WideWideStringExtern));
      end if;
      
   end WideWideString;

end StringToInteger;
