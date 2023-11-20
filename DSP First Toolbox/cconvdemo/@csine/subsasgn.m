function f = subasgn(f,S,b)
switch S.type
case '.'
   switch lower(S.subs)
   case {'amplitude','period','phase','length','delay'}
      eval(['f.' S.subs '=b;']);
   otherwise
      error(['The parameter ' char(39) S.subs char(39) ' does not exist.']);
   end
otherwise
   error('Illegal subscripts.');
end