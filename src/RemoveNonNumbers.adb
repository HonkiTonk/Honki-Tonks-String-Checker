pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;
with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package body RemoveNonNumbers is

   procedure NormalString
     (StringExtern : in out String)
   is begin
      
      StringExtern := NormalString (StringExtern => StringExtern);
      
   end NormalString;
   
   

   function NormalString
     (StringExtern : in String)
      return String
   is begin
      
      case
        StringExtern'Length
      is
         when 0 =>
            return "";
         
         when others =>
            NewString := Ada.Strings.Unbounded.To_Unbounded_String (Source => "");
      end case;
      
      StringLoop:
      for StringLoopvalue in StringExtern'Range loop
         
         case
           StringExtern (StringLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               NewString := NewString & StringExtern (StringLoopvalue)'Image;
            
            when others =>
               null;
         end case;
            
      end loop StringLoop;
      
      return Ada.Strings.Unbounded.To_String (Source => NewString);
      
   end NormalString;
   
   
   
   procedure WideString
     (WideStringExtern : in out Wide_String)
   is begin
      
      WideStringExtern := WideString (WideStringExtern => WideStringExtern);
      
   end WideString;
   
   

   function WideString
     (WideStringExtern : in Wide_String)
      return Wide_String
   is begin
      
      case
        WideStringExtern'Length
      is
         when 0 =>
            return "";
         
         when others =>
            NewWideString := Ada.Strings.Wide_Unbounded.To_Unbounded_Wide_String (Source => "");
      end case;
      
      WideStringLoop:
      for WideStringLoopvalue in WideStringExtern'Range loop
         
         case
           WideStringExtern (WideStringLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               NewWideString := NewWideString & WideStringExtern (WideStringLoopvalue)'Wide_Image;
            
            when others =>
               null;
         end case;
            
      end loop WideStringLoop;
      
      return Ada.Strings.Wide_Unbounded.To_Wide_String (Source => NewWideString);
      
   end WideString;
   
   
   
   procedure WideWideString
     (WideWideStringExtern : in out Wide_Wide_String)
   is begin
      
      WideWideStringExtern := WideWideString (WideWideStringExtern => WideWideStringExtern);
      
   end WideWideString;
   
   

   function WideWideString
     (WideWideStringExtern : in Wide_Wide_String)
      return Wide_Wide_String
   is begin
      
      case
        WideWideStringExtern'Length
      is
         when 0 =>
            return "";
         
         when others =>
            NewWideWideString := Ada.Strings.Wide_Wide_Unbounded.To_Unbounded_Wide_Wide_String (Source => "");
      end case;
      
      WideWideStringLoop:
      for WideWideStringLoopvalue in WideWideStringExtern'Range loop
         
         case
           WideWideStringExtern (WideWideStringLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               NewWideWideString := NewWideWideString & WideWideStringExtern (WideWideStringLoopvalue)'Wide_Wide_Image;
            
            when others =>
               null;
         end case;
            
      end loop WideWideStringLoop;
      
      return Ada.Strings.Wide_Wide_Unbounded.To_Wide_Wide_String (Source => NewWideWideString);
      
   end WideWideString;

end RemoveNonNumbers;
