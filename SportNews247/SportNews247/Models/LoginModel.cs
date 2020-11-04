using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace SportNews247.Models
{
    public class LoginModel
    {
        public string id { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public string name { get; set; }
        public int per { get; set; }
    }

    public class RegisterModel
    {
        [Required]
        public string TenDangNhap { get; set; }

        [Required]
        [EmailAddress]
        public string Email { get; set; }

        [Required]
        public string MatKhau { get; set; }

        [Required]
        public string XacNhanMatKhau { get; set; }

        [Required]
        public string CaptchaResponse { get; set; }
    }

    public class ResetPassModel
    {
        [Required]
        [DisplayName("Mật khẩu hiện tại")]
        public string MatKhau { get; set; }

        [Required]
        [DisplayName("Mật khẩu mới")]
        public string MatKhauMoi { get; set; }

        [Required]
        [DisplayName("Xác nhận")]
        public string XacNhanMatKhau { get; set; }
    }
}