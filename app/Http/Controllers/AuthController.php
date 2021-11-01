<?php
  
namespace App\Http\Controllers;
  
use Illuminate\Http\Request;
  
use Illuminate\Support\Facades\Auth;
use Validator;
use Hash;
use Session;
use App\Models\Users;
  
  
class AuthController extends Controller
{
    public function showFormLogin()
    {
        return view('frontend.login.login');
    }
  
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required',
            'password' => 'required'
        ]);

        $proses = $request->only('email', 'password');

       if (Auth::attempt($proses)) {
           $login = Auth::User();
            
           if ($login->status == 'admin') {
                return redirect()->intended('dashboard');
            }
            else {
                return redirect()->intended('/');
            }
       } else {
            return redirect()->route('h.login');
       }
    }

    public function logout()
    {
        Auth::logout(); // menghapus session yang aktif
        return redirect()->route('login');
    }
  
  
}